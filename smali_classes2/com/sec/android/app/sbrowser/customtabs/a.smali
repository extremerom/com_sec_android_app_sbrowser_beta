.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;->a(Lcom/sec/android/app/sbrowser/customtabs/SCustomTabInterceptNavigationDelegateClientImpl;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->a(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->f(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->z(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->y(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->x(Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
