.class public final synthetic Lxa/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxa/d;->a:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iput p2, p0, Lxa/d;->b:I

    iput-object p3, p0, Lxa/d;->c:Ljava/lang/String;

    iput-wide p4, p0, Lxa/d;->d:J

    iput-wide p6, p0, Lxa/d;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v1, p0, Lxa/d;->b:I

    iget-object v2, p0, Lxa/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lxa/d;->a:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iget-wide v3, p0, Lxa/d;->d:J

    iget-wide v5, p0, Lxa/d;->e:J

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;JJ)V

    return-void
.end method
