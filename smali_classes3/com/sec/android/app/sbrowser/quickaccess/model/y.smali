.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/y;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/y;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/y;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/y;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    check-cast p1, Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->e(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
