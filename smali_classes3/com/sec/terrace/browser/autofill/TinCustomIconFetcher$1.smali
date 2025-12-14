.class Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;
.super Li4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->requestIcon(Landroid/content/Context;Ljava/lang/String;FLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;)V
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
.field final synthetic this$0:Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

.field final synthetic val$callback:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;Landroid/content/Context;Ljava/lang/String;Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->this$0:Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    iput-object p2, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->val$callback:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;

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

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "TinCustomIconFetcher"

    const-string v0, "Failed to load icon"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->val$callback:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;->onResult(Z)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V
    .locals 1
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

    if-eqz p1, :cond_0

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->this$0:Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->val$url:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->a(Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->val$callback:Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;->onResult(Z)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher$1;->onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V

    return-void
.end method
