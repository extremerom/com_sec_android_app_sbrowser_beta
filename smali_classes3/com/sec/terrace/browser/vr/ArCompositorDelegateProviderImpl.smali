.class public Lcom/sec/terrace/browser/vr/ArCompositorDelegateProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/vr/ArCompositorDelegateProvider;


# annotations
.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/browser/vr/ArCompositorDelegate;
    .locals 0

    new-instance p0, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0
.end method
