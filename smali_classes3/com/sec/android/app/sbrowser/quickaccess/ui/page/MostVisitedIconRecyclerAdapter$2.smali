.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->deleteItems(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method
