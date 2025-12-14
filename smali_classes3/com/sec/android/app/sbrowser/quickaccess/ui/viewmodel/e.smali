.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/e;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/e;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/e;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
