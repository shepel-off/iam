from iam.users.models import Profile

def safe_get_profile(user):
    try:
        return user.get_profile()
    except Profile.DoesNotExists:
        return None
         
