.class Lorg/chromium/content/browser/AttributionOsLevelManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/AttributionOsLevelManager;->deleteRegistrations(IJJ[Lorg/chromium/url/GURL;[Ljava/lang/String;II)V
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
.field private mNumPendingCalls:I

.field final synthetic this$0:Lorg/chromium/content/browser/AttributionOsLevelManager;

.field final synthetic val$numCalls:I

.field final synthetic val$requestId:I


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/AttributionOsLevelManager;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->this$0:Lorg/chromium/content/browser/AttributionOsLevelManager;

    iput p2, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->val$numCalls:I

    iput p3, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->mNumPendingCalls:I

    return-void
.end method

.method private onCall()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->mNumPendingCalls:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->mNumPendingCalls:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->this$0:Lorg/chromium/content/browser/AttributionOsLevelManager;

    iget p0, p0, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->val$requestId:I

    invoke-static {v0, p0}, Lorg/chromium/content/browser/AttributionOsLevelManager;->a(Lorg/chromium/content/browser/AttributionOsLevelManager;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AttributionManager"

    const-string v1, "Failed to delete measurement API data"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->c(Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->e(I)V

    invoke-direct {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->onCall()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->e(I)V

    invoke-direct {p0}, Lorg/chromium/content/browser/AttributionOsLevelManager$2;->onCall()V

    return-void
.end method
