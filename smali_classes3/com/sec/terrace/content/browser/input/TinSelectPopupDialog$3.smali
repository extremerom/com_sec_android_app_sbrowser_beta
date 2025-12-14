.class Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$3;
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


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$3;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "201"

    const-string v0, "2163"

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$3;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->hide(Z)V

    return-void
.end method
