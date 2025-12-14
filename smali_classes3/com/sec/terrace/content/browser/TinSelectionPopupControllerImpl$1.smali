.class Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getInputMethodChangeObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$1;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$1;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->n(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$1;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->o(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$1;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->p(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)V

    :cond_0
    return-void
.end method
