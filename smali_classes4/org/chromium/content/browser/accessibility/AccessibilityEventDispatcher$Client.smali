.class interface abstract Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher$Client;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Client"
.end annotation


# virtual methods
.method public abstract dispatchEvent(II)Z
.end method

.method public abstract postRunnable(Ljava/lang/Runnable;J)V
.end method

.method public abstract removeRunnable(Ljava/lang/Runnable;)V
.end method
