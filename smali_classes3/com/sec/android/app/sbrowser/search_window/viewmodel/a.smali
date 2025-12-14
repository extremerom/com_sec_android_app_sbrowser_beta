.class public final synthetic Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->c(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->c(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->b(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
