
# =====================================================
# ODOO 19 DOCKERFILE
# =====================================================

# Use the official Odoo 19 image as the base image.
FROM odoo:19.0

# Switch to root to install additional dependencies.
USER root

# # Copy Python requirements into the container.
# COPY requirements.txt /tmp/requirements.txt

# # Install Python dependencies.
# RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Create the custom addons directory.
RUN mkdir -p /mnt/extra-addons

# Set the correct ownership for Odoo.
RUN chown -R odoo:odoo /mnt/extra-addons

# Switch back to the default Odoo user.
USER odoo

# Default command to start Odoo.
CMD ["odoo"]
