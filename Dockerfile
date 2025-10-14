# Unity Build Container
FROM unityci/editor:ubuntu-2023.3.0f1-base-1

# Set environment variables
ENV UNITY_PROJECTPATH=/workspace
ENV UNITY_LICENSE_CONTENT_B64=${UNITY_LICENSE}

# Install additional dependencies
RUN apt-get update && apt-get install -y \
    git-lfs \
    curl \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Setup Git LFS
RUN git lfs install

# Create workspace directory
WORKDIR /workspace

# Copy project files
COPY . .

# Set permissions
RUN chmod -R 755 /workspace

# Build command
CMD ["unity-editor", "-batchmode", "-quit", "-projectPath", ".", "-buildTarget", "StandaloneWindows64", "-executeMethod", "BuildScript.Build"]
