.class Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->setupWidgetsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate$1;->this$0:Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endActiveSession()Z

    return-void
.end method
