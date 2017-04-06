.class public Lcom/borismus/webintent/WebIntent;
.super Lorg/apache/cordova/CordovaPlugin;
.source "WebIntent.java"


# instance fields
.field private onNewIntentCallbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/borismus/webintent/WebIntent;->onNewIntentCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 19
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 40
    :try_start_0
    const-string v16, "startActivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 41
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 43
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 44
    const/16 v16, 0x0

    .line 162
    :goto_0
    return v16

    .line 48
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/borismus/webintent/WebIntent;->webView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v11

    .line 49
    .local v11, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 50
    .local v10, "obj":Lorg/json/JSONObject;
    const-string v16, "type"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v16, "type"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, "type":Ljava/lang/String;
    :goto_1
    const-string v16, "url"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v16, "url"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    .line 52
    .local v14, "uri":Landroid/net/Uri;
    :goto_2
    const-string v16, "extras"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    const-string v16, "extras"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 53
    .local v6, "extras":Lorg/json/JSONObject;
    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v7, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    .line 57
    invoke-virtual {v6}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 58
    .local v5, "extraNames":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_4

    .line 59
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "value":Ljava/lang/String;
    invoke-interface {v7, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 50
    .end local v5    # "extraNames":Lorg/json/JSONArray;
    .end local v6    # "extras":Lorg/json/JSONObject;
    .end local v7    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    .end local v15    # "value":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 51
    .restart local v13    # "type":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 52
    .restart local v14    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 65
    .restart local v6    # "extras":Lorg/json/JSONObject;
    .restart local v7    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v16, "action"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14, v13, v7}, Lcom/borismus/webintent/WebIntent;->startActivity(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 68
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 70
    .end local v6    # "extras":Lorg/json/JSONObject;
    .end local v7    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v11    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v16, "hasExtra"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 71
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 73
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 74
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 76
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/borismus/webintent/WebIntent;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v16

    check-cast v16, Lorg/apache/cordova/CordovaActivity;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 77
    .local v8, "i":Landroid/content/Intent;
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "extraName":Ljava/lang/String;
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v8, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 80
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 82
    .end local v4    # "extraName":Ljava/lang/String;
    .end local v8    # "i":Landroid/content/Intent;
    :cond_7
    const-string v16, "getExtra"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 83
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 85
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 86
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 88
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/borismus/webintent/WebIntent;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v16

    check-cast v16, Lorg/apache/cordova/CordovaActivity;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 89
    .restart local v8    # "i":Landroid/content/Intent;
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    .restart local v4    # "extraName":Ljava/lang/String;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 92
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 93
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 96
    :cond_9
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 97
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 99
    .end local v4    # "extraName":Ljava/lang/String;
    .end local v8    # "i":Landroid/content/Intent;
    :cond_a
    const-string v16, "getUri"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 100
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-eqz v16, :cond_b

    .line 102
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 103
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 106
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/borismus/webintent/WebIntent;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v16

    check-cast v16, Lorg/apache/cordova/CordovaActivity;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 107
    .restart local v8    # "i":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, "uri":Ljava/lang/String;
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 110
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 111
    .end local v8    # "i":Landroid/content/Intent;
    .end local v14    # "uri":Ljava/lang/String;
    :cond_c
    const-string v16, "onNewIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 113
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/borismus/webintent/WebIntent;->onNewIntentCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 115
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-eqz v16, :cond_d

    .line 116
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 117
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 120
    :cond_d
    new-instance v12, Lorg/apache/cordova/PluginResult;

    sget-object v16, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 121
    .local v12, "result":Lorg/apache/cordova/PluginResult;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 122
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 123
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 125
    .end local v12    # "result":Lorg/apache/cordova/PluginResult;
    :cond_e
    const-string v16, "sendBroadcast"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 127
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 129
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 130
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 134
    :cond_f
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 136
    .restart local v10    # "obj":Lorg/json/JSONObject;
    const-string v16, "extras"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    const-string v16, "extras"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 137
    .restart local v6    # "extras":Lorg/json/JSONObject;
    :goto_5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 140
    .restart local v7    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_11

    .line 141
    invoke-virtual {v6}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 142
    .restart local v5    # "extraNames":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_11

    .line 143
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 144
    .restart local v9    # "key":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 145
    .restart local v15    # "value":Ljava/lang/String;
    invoke-interface {v7, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 136
    .end local v5    # "extraNames":Lorg/json/JSONArray;
    .end local v6    # "extras":Lorg/json/JSONObject;
    .end local v7    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_10
    const/4 v6, 0x0

    goto :goto_5

    .line 149
    .restart local v6    # "extras":Lorg/json/JSONObject;
    .restart local v7    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_11
    const-string v16, "action"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lcom/borismus/webintent/WebIntent;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 152
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 155
    .end local v6    # "extras":Lorg/json/JSONObject;
    .end local v7    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "obj":Lorg/json/JSONObject;
    :cond_12
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct/range {v16 .. v17}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v16, Lorg/apache/cordova/PluginResult;

    sget-object v17, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 162
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/borismus/webintent/WebIntent;->onNewIntentCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 171
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 172
    iget-object v1, p0, Lcom/borismus/webintent/WebIntent;->onNewIntentCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 174
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    return-void
.end method

.method sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 215
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/borismus/webintent/WebIntent;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/CordovaActivity;

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CordovaActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method startActivity(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p4, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v0, "i":Landroid/content/Intent;
    :goto_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 180
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :cond_0
    :goto_1
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, "value":Ljava/lang/String;
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "text/html"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_2

    .line 177
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .restart local v0    # "i":Landroid/content/Intent;
    :cond_2
    if-eqz p3, :cond_0

    .line 183
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 192
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    iget-object v5, p0, Lcom/borismus/webintent/WebIntent;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v2

    .line 196
    .local v2, "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 197
    .end local v2    # "resourceApi":Lorg/apache/cordova/CordovaResourceApi;
    :cond_4
    const-string v5, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 199
    const-string v5, "android.intent.extra.EMAIL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 201
    :cond_5
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 204
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/borismus/webintent/WebIntent;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/CordovaActivity;

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CordovaActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method
