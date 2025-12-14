.class public final Lretrofit2/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final errorBody:Lhd/X;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final rawResponse:Lhd/T;


# direct methods
.method private constructor <init>(Lhd/T;Ljava/lang/Object;Lhd/X;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lhd/X;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd/T;",
            "TT;",
            "Lhd/X;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/Response;->rawResponse:Lhd/T;

    iput-object p2, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/Response;->errorBody:Lhd/X;

    return-void
.end method

.method public static error(ILhd/X;)Lretrofit2/Response;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lhd/X;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    move/from16 v4, p0

    move-object/from16 v15, p1

    const-string v0, "body == null"

    invoke-static {v15, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x190

    if-lt v4, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Lretrofit2/OkHttpCall$NoContentResponseBody;

    invoke-virtual/range {p1 .. p1}, Lhd/X;->contentType()Lhd/D;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lhd/X;->contentLength()J

    move-result-wide v2

    invoke-direct {v7, v1, v2, v3}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lhd/D;J)V

    sget-object v2, Lhd/K;->HTTP_1_1:Lhd/K;

    const-string v1, "protocol"

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lhd/L;

    invoke-direct {v1}, Lhd/L;-><init>()V

    const-string v3, "http://localhost/"

    invoke-virtual {v1, v3}, Lhd/L;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lhd/L;->b()Lhd/M;

    move-result-object v1

    if-ltz v4, :cond_0

    new-instance v6, Lhd/y;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v6, v0}, Lhd/y;-><init>([Ljava/lang/String;)V

    new-instance v13, Lhd/T;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-string v3, "Response.error()"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v13

    move/from16 v4, p0

    move-object/from16 v19, v13

    move-wide/from16 v13, v16

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lhd/T;-><init>(Lhd/M;Lhd/K;Ljava/lang/String;ILhd/w;Lhd/y;Lhd/X;Lhd/T;Lhd/T;Lhd/T;JJLU0/h;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lretrofit2/Response;->error(Lhd/X;Lhd/T;)Lretrofit2/Response;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "code < 0: "

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code < 400: "

    invoke-static {v4, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static error(Lhd/X;Lhd/T;)Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhd/X;",
            "Lhd/T;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xc8

    iget v1, p1, Lhd/T;->d:I

    if-gt v0, v1, :cond_1

    const/16 v0, 0x12c

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lretrofit2/Response;-><init>(Lhd/T;Ljava/lang/Object;Lhd/X;)V

    return-object v0
.end method

.method public static success(ILjava/lang/Object;)Lretrofit2/Response;
    .locals 18
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    move/from16 v4, p0

    const/16 v0, 0xc8

    if-lt v4, v0, :cond_1

    const/16 v0, 0x12c

    if-ge v4, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lhd/K;->HTTP_1_1:Lhd/K;

    const-string v1, "protocol"

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lhd/L;

    invoke-direct {v1}, Lhd/L;-><init>()V

    const-string v3, "http://localhost/"

    invoke-virtual {v1, v3}, Lhd/L;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lhd/L;->b()Lhd/M;

    move-result-object v1

    if-ltz v4, :cond_0

    new-instance v6, Lhd/y;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v6, v0}, Lhd/y;-><init>([Ljava/lang/String;)V

    new-instance v15, Lhd/T;

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const-string v3, "Response.success()"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v15

    move/from16 v4, p0

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lhd/T;-><init>(Lhd/M;Lhd/K;Ljava/lang/String;ILhd/w;Lhd/y;Lhd/X;Lhd/T;Lhd/T;Lhd/T;JJLU0/h;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lhd/T;)Lretrofit2/Response;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "code < 0: "

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code < 200 or >= 300: "

    invoke-static {v4, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static success(Ljava/lang/Object;)Lretrofit2/Response;
    .locals 18
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v4, Lhd/K;->HTTP_1_1:Lhd/K;

    const-string v1, "protocol"

    invoke-static {v4, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lhd/L;

    invoke-direct {v1}, Lhd/L;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lhd/L;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lhd/L;->b()Lhd/M;

    move-result-object v3

    new-instance v8, Lhd/y;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v8, v0}, Lhd/y;-><init>([Ljava/lang/String;)V

    new-instance v0, Lhd/T;

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-string v5, "OK"

    const/16 v6, 0xc8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v17}, Lhd/T;-><init>(Lhd/M;Lhd/K;Ljava/lang/String;ILhd/w;Lhd/y;Lhd/X;Lhd/T;Lhd/T;Lhd/T;JJLU0/h;)V

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lretrofit2/Response;->success(Ljava/lang/Object;Lhd/T;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lhd/T;)Lretrofit2/Response;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lhd/T;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0xc8

    iget v1, p1, Lhd/T;->d:I

    if-gt v0, v1, :cond_0

    const/16 v0, 0x12c

    if-ge v1, v0, :cond_0

    new-instance v0, Lretrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lretrofit2/Response;-><init>(Lhd/T;Ljava/lang/Object;Lhd/X;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Ljava/lang/Object;Lhd/y;)Lretrofit2/Response;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lhd/y;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "headers == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhd/S;

    invoke-direct {v0}, Lhd/S;-><init>()V

    const/16 v1, 0xc8

    iput v1, v0, Lhd/S;->c:I

    const-string v1, "OK"

    iput-object v1, v0, Lhd/S;->d:Ljava/lang/String;

    sget-object v1, Lhd/K;->HTTP_1_1:Lhd/K;

    const-string v2, "protocol"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lhd/S;->b:Lhd/K;

    invoke-virtual {v0, p1}, Lhd/S;->c(Lhd/y;)V

    new-instance p1, Lhd/L;

    invoke-direct {p1}, Lhd/L;-><init>()V

    const-string v1, "http://localhost/"

    invoke-virtual {p1, v1}, Lhd/L;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lhd/L;->b()Lhd/M;

    move-result-object p1

    iput-object p1, v0, Lhd/S;->a:Lhd/M;

    invoke-virtual {v0}, Lhd/S;->a()Lhd/T;

    move-result-object p1

    invoke-static {p0, p1}, Lretrofit2/Response;->success(Ljava/lang/Object;Lhd/T;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    return-object p0
.end method

.method public code()I
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lhd/T;

    iget p0, p0, Lhd/T;->d:I

    return p0
.end method

.method public errorBody()Lhd/X;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lretrofit2/Response;->errorBody:Lhd/X;

    return-object p0
.end method

.method public headers()Lhd/y;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lhd/T;

    iget-object p0, p0, Lhd/T;->f:Lhd/y;

    return-object p0
.end method

.method public isSuccessful()Z
    .locals 2

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lhd/T;

    iget p0, p0, Lhd/T;->d:I

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lhd/T;

    iget-object p0, p0, Lhd/T;->c:Ljava/lang/String;

    return-object p0
.end method

.method public raw()Lhd/T;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lhd/T;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lhd/T;

    invoke-virtual {p0}, Lhd/T;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
