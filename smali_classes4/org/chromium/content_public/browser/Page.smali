.class public Lorg/chromium/content_public/browser/Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/Page$PageDeletionListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mIsPrerendering:Z

.field private mListener:Lorg/chromium/content_public/browser/Page$PageDeletionListener;


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/Page;->mIsPrerendering:Z

    return-void
.end method

.method private willDeletePage(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/Page;->mIsPrerendering:Z

    iget-object p1, p0, Lorg/chromium/content_public/browser/Page;->mListener:Lorg/chromium/content_public/browser/Page$PageDeletionListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/Page$PageDeletionListener;->onWillDeletePage(Lorg/chromium/content_public/browser/Page;)V

    :cond_0
    return-void
.end method
