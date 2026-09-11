# Pull image from aws repo
FROM public.ecr.aws/nginx/nginx:alpine

# Copy pre-compiled dist folder to Nginx standard HTML root
COPY dist /usr/share/nginx/html

# Nginx listens on default HTTP port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
