.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
