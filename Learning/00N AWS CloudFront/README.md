# AWS CloudFront

`AWS CloudFront` is a fast, secure, and reliable content delivery network (CDN), which sits near to the users location while the actual server (called as `Origin`) sits somewhere else,

This methodology can be applied to chiefly static content for

- HTML Pages
- Images
- Videos
- API's
- Other assets

## Step-by-step example of how AWS CloudFront works to deliver an image to a user:

**Scenario:**
You have an image hosted on an S3 bucket (or any other origin server), and you want to deliver it efficiently to users worldwide using CloudFront.

If the application is already configured to serve the static content via AWS CloudFront

- User Requests the Image
- CloudFront Checks Cache
- Fetching from the Origin (If the image is not available in CF Cache)
- Caching the Image at the Edge
- Serving the Image to the User
- Serving same image for Subsequent Requests

