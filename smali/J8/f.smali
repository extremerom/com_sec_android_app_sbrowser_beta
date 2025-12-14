.class public final LJ8/f;
.super LJ8/i;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput p1, p0, LJ8/f;->d:I

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, LJ8/i;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method public final s()Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "timestamp"

    const-string v2, "f"

    const-string v3, "record"

    iget v4, v0, LJ8/f;->d:I

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v5, v0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v5, Landroid/util/JsonReader;

    invoke-static {v5}, LR8/b;->i(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "records"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "resultString : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "record_id"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    :goto_1
    move-wide v13, v12

    goto :goto_2

    :cond_1
    const-string v10, "modified_time"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_1

    :cond_2
    const-string v10, "mod_timestamp"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_1

    :cond_3
    const-wide/16 v12, 0x0

    goto :goto_1

    :goto_2
    new-instance v10, LI8/b;

    const/16 v16, 0x0

    const-string v17, "normal"

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, LI8/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, LI8/a;

    invoke-static {v9}, LJ8/i;->k(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v12, v11, v9}, LI8/a;-><init>(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    new-instance v9, LI8/c;

    invoke-direct {v9, v10, v12}, LI8/c;-><init>(LI8/b;LI8/a;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    return-object v4

    :pswitch_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget-object v5, v0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v5, Landroid/util/JsonReader;

    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, LR8/b;->i(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    new-instance v9, LI8/c;

    new-instance v11, LI8/b;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v6, v11, LI8/b;->a:Ljava/lang/String;

    iput-wide v7, v11, LI8/b;->c:J

    new-instance v6, LI8/a;

    invoke-static {v5}, LJ8/i;->k(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v6, v10, v5}, LI8/a;-><init>(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    invoke-direct {v9, v11, v6}, LI8/c;-><init>(LI8/b;LI8/a;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getRecordDataSetList "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
