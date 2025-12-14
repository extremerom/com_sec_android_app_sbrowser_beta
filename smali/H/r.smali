.class public final synthetic LH/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:LH/s;

.field public final synthetic b:LH/y;


# direct methods
.method public synthetic constructor <init>(LH/s;LH/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH/r;->a:LH/s;

    iput-object p2, p0, LH/r;->b:LH/y;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, LH/r;->a:LH/s;

    iget-object v0, v0, LH/s;->b:LH/t;

    iget-object p0, p0, LH/r;->b:LH/y;

    invoke-virtual {v0, p0}, LH/t;->cleanUpSession(LH/y;)Z

    return-void
.end method
