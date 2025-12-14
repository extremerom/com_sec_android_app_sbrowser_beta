.class public final synthetic Lcom/sec/android/app/sbrowser/search_widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_widget/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/b;->b:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/b;->b:Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->h(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_widget/viewmodel/SearchWidgetViewModel;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->o(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->n(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
