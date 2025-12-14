.class interface abstract Lorg/chromium/content/browser/GestureListenerManagerImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/GestureListenerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract init(Lorg/chromium/content/browser/GestureListenerManagerImpl;Lorg/chromium/content/browser/webcontents/WebContentsImpl;)J
.end method

.method public abstract resetGestureDetection(JLorg/chromium/content/browser/GestureListenerManagerImpl;)V
.end method

.method public abstract setRootScrollOffsetUpdateFrequency(JI)V
    .param p3    # I
        .annotation build Lorg/chromium/cc/mojom/RootScrollOffsetUpdateFrequency$EnumType;
        .end annotation
    .end param
.end method
