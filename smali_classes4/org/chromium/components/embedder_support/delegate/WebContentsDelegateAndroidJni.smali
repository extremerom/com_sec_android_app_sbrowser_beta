.class public Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroidJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroidJni;

    invoke-direct {v0}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroidJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public maybeCopyContentAreaAsBitmapOutcome(JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M5SKa83T(JLjava/lang/Object;)V

    return-void
.end method
