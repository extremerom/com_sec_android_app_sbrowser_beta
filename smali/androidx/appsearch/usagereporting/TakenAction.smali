.class public abstract Landroidx/appsearch/usagereporting/TakenAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appsearch/usagereporting/TakenAction$ActionType;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/appsearch/usagereporting/TakenAction;->a:Ljava/lang/String;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Landroidx/appsearch/usagereporting/TakenAction;->b:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/appsearch/usagereporting/TakenAction;->c:J

    iput-wide p5, p0, Landroidx/appsearch/usagereporting/TakenAction;->d:J

    iput p1, p0, Landroidx/appsearch/usagereporting/TakenAction;->e:I

    return-void
.end method
