from django.shortcuts import render

# Create your views here.
def dashboard(request):
    context = {}
    return render(request, "dashboard.html", context)

def profile(request):
    context = {}
    return render(request, "profile.html", context)

def transactions(request):
    context = {}
    return render(request, "transactions.html", context)

def events(request):
    context = {}
    return render(request, "events.html", context)

def messages(request):
    context = {}
    return render(request, "messages.html", context)
    