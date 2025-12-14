.class public final LK0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LK0/g;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:LK0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK0/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK0/g;->c:LK0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LK0/h;->f:LG5/H3;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, LG5/H3;->m(LK0/g;Ljava/lang/Thread;)V

    return-void
.end method
