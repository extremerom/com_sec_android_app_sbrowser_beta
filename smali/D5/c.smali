.class public final synthetic LD5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:LD5/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LD5/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LD5/c;->a:LD5/c;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
