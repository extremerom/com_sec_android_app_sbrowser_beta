.class public interface abstract Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$LookupResult;,
        Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract setObserver(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)V
.end method

.method public abstract startUriLookup(JLjava/lang/String;[II)V
.end method
