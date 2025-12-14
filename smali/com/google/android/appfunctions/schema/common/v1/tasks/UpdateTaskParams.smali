.class public final Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;",
        "",
        "java.com.google.android.libraries.llm.appfunctions.appfunctions_schema_appfunctions_schema"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

.field public final e:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

.field public final f:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

.field public final g:Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeNullableField;

.field public final h:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

.field public final i:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeNullableField;Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskId"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    iput-object p5, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    iput-object p6, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->f:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    iput-object p7, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->g:Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeNullableField;

    iput-object p8, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->h:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    iput-object p9, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->i:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->f:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->f:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->g:Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeNullableField;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->g:Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeNullableField;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->h:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->h:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->i:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->i:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v5, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->h:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    iget-object v6, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->i:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->d:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringField;

    iget-object v2, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->e:Lcom/google/android/appfunctions/schema/common/v1/types/SetStringNullableField;

    iget-object v3, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->f:Lcom/google/android/appfunctions/schema/common/v1/types/SetBooleanNullableField;

    iget-object v4, p0, Lcom/google/android/appfunctions/schema/common/v1/tasks/UpdateTaskParams;->g:Lcom/google/android/appfunctions/schema/common/v1/types/SetDateTimeNullableField;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
