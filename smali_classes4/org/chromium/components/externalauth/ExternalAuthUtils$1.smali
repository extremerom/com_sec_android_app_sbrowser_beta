.class Lorg/chromium/components/externalauth/ExternalAuthUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/externalauth/ExternalAuthUtils;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$errorHandler:Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;

.field final synthetic val$resultCode:I


# direct methods
.method public constructor <init>(Lorg/chromium/components/externalauth/ExternalAuthUtils;Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;->this$0:Lorg/chromium/components/externalauth/ExternalAuthUtils;

    iput-object p2, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;->val$errorHandler:Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;

    iput-object p3, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;->val$errorHandler:Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;

    iget-object v1, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;->val$context:Landroid/content/Context;

    iget p0, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;->val$resultCode:I

    invoke-virtual {v0, v1, p0}, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;->handleError(Landroid/content/Context;I)V

    return-void
.end method
