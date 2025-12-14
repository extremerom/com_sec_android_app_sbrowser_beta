.class Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->onReceiveIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

.field final synthetic val$displayTitle:Ljava/lang/String;

.field final synthetic val$filteredUrl:Ljava/lang/String;

.field final synthetic val$icon:Landroid/graphics/Bitmap;

.field final synthetic val$index:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$displayTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$filteredUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$icon:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$displayTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$filteredUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$icon:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$index:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onFetched(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 13

    const-string p1, "si__AiBriefController"

    const-string v0, "fetch icon from QuickAccessSiteItemFetcher"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mIconUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$displayTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$filteredUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$icon:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$index:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$title:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$displayTitle:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$filteredUrl:Ljava/lang/String;

    iget-object v10, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mIconUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$icon:Landroid/graphics/Bitmap;

    iget v12, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$index:I

    invoke-static/range {v6 .. v12}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onNeedRetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$displayTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$filteredUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$icon:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;->val$index:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method
