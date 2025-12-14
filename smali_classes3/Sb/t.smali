.class public final LSb/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LSb/t;


# instance fields
.field public final a:LSb/v;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LSb/t;

    sget-object v1, LSb/q;->a:Lhc/c;

    sget-object v1, Ldb/e;->e:Ldb/e;

    const-string v2, "configuredKotlinVersion"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LSb/q;->d:LSb/r;

    iget-object v3, v2, LSb/r;->b:Ldb/e;

    if-eqz v3, :cond_0

    iget v3, v3, Ldb/e;->d:I

    iget v1, v1, Ldb/e;->d:I

    sub-int/2addr v3, v1

    if-gtz v3, :cond_0

    iget-object v1, v2, LSb/r;->c:LSb/C;

    goto :goto_0

    :cond_0
    iget-object v1, v2, LSb/r;->a:LSb/C;

    :goto_0
    const-string v2, "globalReportLevel"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LSb/C;->WARN:LSb/C;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    new-instance v3, LSb/v;

    invoke-direct {v3, v1, v2}, LSb/v;-><init>(LSb/C;LSb/C;)V

    sget-object v1, LSb/s;->a:LSb/s;

    invoke-direct {v0, v3}, LSb/t;-><init>(LSb/v;)V

    sput-object v0, LSb/t;->c:LSb/t;

    return-void
.end method

.method public constructor <init>(LSb/v;)V
    .locals 1

    sget-object v0, LSb/s;->a:LSb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSb/t;->a:LSb/v;

    iget-boolean p1, p1, LSb/v;->d:Z

    if-nez p1, :cond_1

    sget-object p1, LSb/q;->a:Lhc/c;

    invoke-virtual {v0, p1}, LSb/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LSb/C;->IGNORE:LSb/C;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, LSb/t;->b:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaTypeEnhancementState(jsr305="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LSb/t;->a:LSb/v;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", getReportLevelForAnnotation="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, LSb/s;->a:LSb/s;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
