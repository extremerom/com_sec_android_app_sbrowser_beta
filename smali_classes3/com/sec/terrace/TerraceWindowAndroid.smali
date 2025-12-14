.class public Lcom/sec/terrace/TerraceWindowAndroid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;
    }
.end annotation


# instance fields
.field private mIntentCallback:Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;

.field private mWindow:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/TerraceWindowAndroid;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    iput-object p2, p0, Lcom/sec/terrace/TerraceWindowAndroid;->mIntentCallback:Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;

    return-void
.end method


# virtual methods
.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceWindowAndroid;->mIntentCallback:Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;->onIntentCompleted(ILandroid/content/Intent;)V

    return-void
.end method

.method public removeIntentCallback()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceWindowAndroid;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeIntentCallback(Lorg/chromium/ui/base/WindowAndroid$IntentCallback;)Z

    move-result p0

    return p0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;)I
    .locals 1

    iput-object p2, p0, Lcom/sec/terrace/TerraceWindowAndroid;->mIntentCallback:Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;

    iget-object p2, p0, Lcom/sec/terrace/TerraceWindowAndroid;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public showIntent(Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceWindowAndroid;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
