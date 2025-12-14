.class public final synthetic Lcom/sec/terrace/content/browser/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/content/browser/TinContentViewCore;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/a;->a:Lcom/sec/terrace/content/browser/TinContentViewCore;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/a;->a:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->a(Lcom/sec/terrace/content/browser/TinContentViewCore;I)V

    return-void
.end method
