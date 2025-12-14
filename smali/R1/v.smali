.class public final LR1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LR1/v;

.field public static final c:LR1/v;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LR1/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LR1/v;-><init>(I)V

    sput-object v0, LR1/v;->b:LR1/v;

    new-instance v0, LR1/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LR1/v;-><init>(I)V

    sput-object v0, LR1/v;->c:LR1/v;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LR1/v;->a:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TemplateCompositor(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, LR1/v;->a:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
