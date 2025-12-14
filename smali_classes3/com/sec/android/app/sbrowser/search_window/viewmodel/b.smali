.class public final synthetic Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;->b:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/b;->b:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->c(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->f(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->g(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->d(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Integer;)V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->h(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->e(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;->b(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowThemeLiveData;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
