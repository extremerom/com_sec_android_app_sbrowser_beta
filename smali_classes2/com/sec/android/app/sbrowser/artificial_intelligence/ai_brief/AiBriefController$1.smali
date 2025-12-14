.class Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;
.super Li4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->onReceiveIconFromQuickAccessSiteItemFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

.field final synthetic val$displayTitle:Ljava/lang/String;

.field final synthetic val$filteredUrl:Ljava/lang/String;

.field final synthetic val$index:I

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$webIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$displayTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$filteredUrl:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$index:I

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$webIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Li4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "si__AiBriefController"

    const-string p1, "onLoadCleared"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "si__AiBriefController"

    const-string v0, "onLoadFailed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$displayTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$filteredUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$webIcon:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$index:I

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lj4/c;",
            ")V"
        }
    .end annotation

    const-string p2, "si__AiBriefController"

    const-string v0, "onResourceReady"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$displayTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$filteredUrl:Ljava/lang/String;

    iget v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->val$index:I

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lj4/c;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;->onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V

    return-void
.end method
