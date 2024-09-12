echo "BUILD START"

# Install dependencies from requirements.txt
python3.12 -m pip install -r requirements.txt

# Collect static files
python3.12 manage.py collectstatic --noinput --clear

# Move collected static files to the directory Vercel expects
mkdir -p staticfile_build
cp -r staticfiles/* staticfile_build/

echo "BUILD END"
