.class public final synthetic Lcom/sec/terrace/content/browser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/e;->a:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/e;->a:Landroid/app/PendingIntent;

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->l(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method
