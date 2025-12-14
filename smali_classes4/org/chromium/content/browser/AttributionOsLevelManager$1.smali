.class Lorg/chromium/content/browser/AttributionOsLevelManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/AttributionOsLevelManager;->addRegistrationFutureCallback(IILcom/google/common/util/concurrent/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/u;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/AttributionOsLevelManager;

.field final synthetic val$requestId:I

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/AttributionOsLevelManager;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->this$0:Lorg/chromium/content/browser/AttributionOsLevelManager;

    iput p2, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->val$requestId:I

    iput p3, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AttributionManager"

    const-string v1, "Failed to register"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->this$0:Lorg/chromium/content/browser/AttributionOsLevelManager;

    iget v1, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->val$requestId:I

    iget p0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->val$type:I

    invoke-static {p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->c(Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->b(Lorg/chromium/content/browser/AttributionOsLevelManager;III)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->this$0:Lorg/chromium/content/browser/AttributionOsLevelManager;

    iget v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->val$requestId:I

    iget p0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$1;->val$type:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->b(Lorg/chromium/content/browser/AttributionOsLevelManager;III)V

    return-void
.end method
