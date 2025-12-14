.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;
.implements Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase$ItemsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/W;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
