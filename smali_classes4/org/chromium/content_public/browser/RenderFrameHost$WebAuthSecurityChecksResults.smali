.class public final Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content_public/browser/RenderFrameHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebAuthSecurityChecksResults"
.end annotation


# instance fields
.field public final isCrossOrigin:Z

.field public final securityCheckResult:I
    .annotation build Lorg/chromium/blink/mojom/AuthenticatorStatus$EnumType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Lorg/chromium/blink/mojom/AuthenticatorStatus$EnumType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;->securityCheckResult:I

    iput-boolean p2, p0, Lorg/chromium/content_public/browser/RenderFrameHost$WebAuthSecurityChecksResults;->isCrossOrigin:Z

    return-void
.end method
