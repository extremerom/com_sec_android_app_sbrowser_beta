.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateGroupBtnClicked(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$2;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->createGroupToMove(Landroid/view/View;)V

    return-void
.end method
