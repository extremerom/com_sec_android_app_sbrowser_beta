.class Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->update(Ljava/util/List;Z[IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$4;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$4;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "201"

    const-string p2, "2164"

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$4;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->c(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;)Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$4;->val$listView:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->access$000(Landroid/widget/ListView;)[I

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;->selectPopupMenuItems([I)V

    return-void
.end method
