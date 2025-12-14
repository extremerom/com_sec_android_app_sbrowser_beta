.class public final synthetic LO4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO4/f;
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
.implements Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;
.implements LR5/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;I)V
    .locals 0

    iput p4, p0, LO4/e;->a:I

    iput-wide p1, p0, LO4/e;->b:J

    iput-object p3, p0, LO4/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput p4, p0, LO4/e;->a:I

    iput-object p1, p0, LO4/e;->c:Ljava/lang/Object;

    iput-wide p2, p0, LO4/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-wide v1, p0, LO4/e;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "next_request_ms"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, LO4/e;->c:Ljava/lang/Object;

    check-cast p0, LH4/k;

    iget-object v1, p0, LH4/k;->a:Ljava/lang/String;

    iget-object v2, p0, LH4/k;->c:LE4/c;

    invoke-static {v2}, LR4/a;->a(LE4/c;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "transport_contexts"

    const-string v4, "backend_name = ? and priority = ?"

    invoke-virtual {p1, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v1, v4, :cond_0

    const-string v1, "backend_name"

    iget-object p0, p0, LH4/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, LR4/a;->a(LE4/c;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "priority"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v5
.end method

.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 3

    iget v0, p0, LO4/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LO4/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-wide v1, p0, LO4/e;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->b(Ljava/util/ArrayList;JLcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LO4/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    iget-wide v1, p0, LO4/e;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->c(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;JLcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCompletion(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    iget-object v0, p0, LO4/e;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/terrace/Terrace;

    iget-wide v2, p0, LO4/e;->b:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/sec/terrace/Terrace;->c(Lcom/sec/terrace/Terrace;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-wide v0, p0, LO4/e;->b:J

    iget-object p0, p0, LO4/e;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    invoke-static {v0, v1, p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->j(JLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/util/List;)V

    return-void
.end method
