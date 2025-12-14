.class Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$imeOptions:I


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    iput p2, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$1;->val$imeOptions:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "201"

    const-string v0, "2161"

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    iget p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$1;->val$imeOptions:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->d(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;IZ)V

    return-void
.end method
