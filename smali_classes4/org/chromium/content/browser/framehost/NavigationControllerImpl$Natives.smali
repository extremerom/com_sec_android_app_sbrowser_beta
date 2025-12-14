.class interface abstract Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/framehost/NavigationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract canGoBack(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
.end method

.method public abstract canGoForward(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
.end method

.method public abstract canGoToOffset(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Z
.end method

.method public abstract cancelPendingReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
.end method

.method public abstract continuePendingReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
.end method

.method public abstract getDirectedNavigationHistory(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Lorg/chromium/content_public/browser/NavigationHistory;ZI)V
.end method

.method public abstract getEntryAtIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Lorg/chromium/content_public/browser/NavigationEntry;
.end method

.method public abstract getLastCommittedEntryIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)I
.end method

.method public abstract getNavigationHistory(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Ljava/lang/Object;)I
.end method

.method public abstract getUseDesktopUserAgent(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
.end method

.method public abstract goBack(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
.end method

.method public abstract goForward(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
.end method

.method public abstract goToNavigationIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)V
.end method

.method public abstract isInitialNavigation(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z
.end method

.method public abstract loadIfNecessary(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
.end method

.method public abstract loadUrl(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLorg/chromium/url/Origin;ZZLorg/chromium/content_public/browser/AdditionalNavigationParams;JJZ)Lorg/chromium/content_public/browser/NavigationHandle;
.end method

.method public abstract pruneForwardEntries(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
.end method

.method public abstract reload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Z)V
.end method

.method public abstract removeEntryAtIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Z
.end method

.method public abstract setNeedsReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V
.end method

.method public abstract setUseDesktopUserAgent(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;ZZI)V
.end method
