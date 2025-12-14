.class interface abstract Lorg/chromium/content/browser/ContentUiEventHandler$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentUiEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract cancelFling(JLorg/chromium/content/browser/ContentUiEventHandler;J)V
.end method

.method public abstract init(Lorg/chromium/content/browser/ContentUiEventHandler;Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method public abstract sendMouseEvent(JLorg/chromium/content/browser/ContentUiEventHandler;JIFFIFFFIIII)V
.end method

.method public abstract sendMouseWheelEvent(JLorg/chromium/content/browser/ContentUiEventHandler;JFFFFII)V
.end method

.method public abstract sendScrollEvent(JLorg/chromium/content/browser/ContentUiEventHandler;JFF)V
.end method
