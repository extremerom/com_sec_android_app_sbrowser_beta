.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

.field public final synthetic c:Landroidx/lifecycle/W;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->b:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->c:Landroidx/lifecycle/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->c:Landroidx/lifecycle/W;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->b:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->c(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->c:Landroidx/lifecycle/W;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/p;->b:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->b(Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;Landroidx/lifecycle/W;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
