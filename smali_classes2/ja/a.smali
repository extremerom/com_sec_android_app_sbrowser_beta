.class public final synthetic Lja/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lja/a;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lja/a;->a:Ljava/lang/String;

    iget-object p0, p0, Lja/a;->b:Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->g(Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
