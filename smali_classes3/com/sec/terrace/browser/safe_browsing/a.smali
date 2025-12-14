.class public final synthetic Lcom/sec/terrace/browser/safe_browsing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;JIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/safe_browsing/a;->a:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    iput-wide p2, p0, Lcom/sec/terrace/browser/safe_browsing/a;->b:J

    iput p4, p0, Lcom/sec/terrace/browser/safe_browsing/a;->c:I

    iput p5, p0, Lcom/sec/terrace/browser/safe_browsing/a;->d:I

    iput p6, p0, Lcom/sec/terrace/browser/safe_browsing/a;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-wide v1, p0, Lcom/sec/terrace/browser/safe_browsing/a;->b:J

    iget v3, p0, Lcom/sec/terrace/browser/safe_browsing/a;->c:I

    iget-object v0, p0, Lcom/sec/terrace/browser/safe_browsing/a;->a:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    iget v4, p0, Lcom/sec/terrace/browser/safe_browsing/a;->d:I

    iget v5, p0, Lcom/sec/terrace/browser/safe_browsing/a;->e:I

    invoke-static/range {v0 .. v5}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->a(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;JIII)V

    return-void
.end method
