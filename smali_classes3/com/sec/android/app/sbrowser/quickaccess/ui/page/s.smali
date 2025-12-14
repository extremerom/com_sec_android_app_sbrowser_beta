.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/s;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BoundedSuggestionListView;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;->g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebSuggestionPopup;)Lcom/sec/android/app/sbrowser/databinding/UrlsuggestionSearchWindowContentsBinding;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
