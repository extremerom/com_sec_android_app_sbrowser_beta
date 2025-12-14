.class public abstract LXc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ6/i;

.field public static final b:LQ6/i;

.field public static final c:LQ6/i;

.field public static final d:LQ6/i;

.field public static final e:LQ6/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LQ6/i;

    const-string v1, "STATE_REG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXc/h;->a:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXc/h;->b:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXc/h;->c:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXc/h;->d:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXc/h;->e:LQ6/i;

    return-void
.end method
