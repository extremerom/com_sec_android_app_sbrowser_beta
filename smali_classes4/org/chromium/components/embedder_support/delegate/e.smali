.class public final synthetic Lorg/chromium/components/embedder_support/delegate/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/embedder_support/delegate/e;->a:J

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/embedder_support/delegate/e;->a:J

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->a(JLandroid/graphics/Bitmap;)V

    return-void
.end method
