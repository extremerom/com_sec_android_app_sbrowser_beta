.class public interface abstract Lorg/chromium/content_public/browser/WebContents;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/WebContents$UserDataFactory;,
        Lorg/chromium/content_public/browser/WebContents$InternalsHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static createDefaultInternalsHolder()Lorg/chromium/content_public/browser/WebContents$InternalsHolder;
    .locals 1

    new-instance v0, Lorg/chromium/content_public/browser/WebContents$1;

    invoke-direct {v0}, Lorg/chromium/content_public/browser/WebContents$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract createMessageChannel()[Lorg/chromium/content_public/browser/MessagePort;
.end method

.method public abstract exitFullscreen()V
.end method

.method public abstract getEventForwarder()Lorg/chromium/ui/base/EventForwarder;
.end method

.method public abstract getLastCommittedUrl()Lorg/chromium/url/GURL;
.end method

.method public abstract getMainFrame()Lorg/chromium/content_public/browser/RenderFrameHost;
.end method

.method public abstract getNavigationController()Lorg/chromium/content_public/browser/NavigationController;
.end method

.method public abstract getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/chromium/content_public/browser/WebContents$UserDataFactory<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getStylusWritingImeCallback()Lorg/chromium/content_public/browser/StylusWritingImeCallback;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;
.end method

.method public abstract getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
.end method

.method public abstract getVisibility()I
.end method

.method public abstract getVisibleUrl()Lorg/chromium/url/GURL;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract notifyRendererPreferenceUpdate()V
.end method

.method public abstract postMessageToMainFrame(Lorg/chromium/content_public/browser/MessagePayload;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/content_public/browser/MessagePort;)V
.end method

.method public abstract removeUserData(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UserData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract requestSmartClipExtract(IIII)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract setSmartClipResultHandler(Landroid/os/Handler;)V
.end method

.method public abstract setStylusWritingHandler(Lorg/chromium/content_public/browser/StylusWritingHandler;)V
.end method

.method public abstract setTopLevelNativeWindow(Lorg/chromium/ui/base/WindowAndroid;)V
.end method

.method public abstract stop()V
.end method

.method public abstract updateWebContentsVisibility(I)V
.end method
