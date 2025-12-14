.class public final synthetic La9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

.field public final synthetic c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field public final synthetic f:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;I)V
    .locals 0

    iput p7, p0, La9/e;->a:I

    iput-object p1, p0, La9/e;->b:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iput-object p2, p0, La9/e;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iput-object p3, p0, La9/e;->d:Ljava/lang/String;

    iput-object p4, p0, La9/e;->e:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iput-object p5, p0, La9/e;->f:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    iput-object p6, p0, La9/e;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, La9/e;->a:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v8, p1

    check-cast v8, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object v5, v0, La9/e;->e:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iget-object v6, v0, La9/e;->f:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    iget-object v2, v0, La9/e;->b:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iget-object v3, v0, La9/e;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v4, v0, La9/e;->d:Ljava/lang/String;

    iget-object v7, v0, La9/e;->g:Ljava/util/Map;

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->d(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_0
    move-object/from16 v15, p1

    check-cast v15, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object v12, v0, La9/e;->e:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iget-object v13, v0, La9/e;->f:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    iget-object v9, v0, La9/e;->b:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iget-object v10, v0, La9/e;->c:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object v11, v0, La9/e;->d:Ljava/lang/String;

    iget-object v14, v0, La9/e;->g:Ljava/util/Map;

    invoke-static/range {v9 .. v15}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->a(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
